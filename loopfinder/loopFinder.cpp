#include "llvm/ADT/SCCIterator.h"
#include "llvm/Analysis/CallGraph.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/Analysis/LoopInfo.h"
using namespace llvm;

namespace {
  struct LoopFinderPass : public FunctionPass {
    static char ID;
    LoopFinderPass() : FunctionPass(ID) {}

    void getAnalysisUsage(AnalysisUsage &AU) const override 
    {
      AU.setPreservesCFG();
      AU.addRequired<LoopInfoWrapperPass>();
    }

    virtual bool runOnFunction(Function &F) override {
      unsigned sccNum = 0;

      LoopInfo &LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();

      errs() << "***Loops in  Function: " << F.getName() << "***\n";
      for (scc_iterator<Function*> SCCI = scc_begin(&F); !SCCI.isAtEnd(); ++SCCI) {
        const std::vector<BasicBlock *> &nextSCC = *SCCI;
	std::vector<unsigned> loopBB;
	std::vector<unsigned> loopInst;
	loopBB.push_back(0);
	loopInst.push_back(0);
	if(nextSCC.size()>1) {
	  errs() << "\nLoop #" << ++sccNum << " : is an outer loop\n";
	  unsigned outerLoopNum = sccNum;
	  unsigned prevLoopDepth = 0;
	  for (std::vector<BasicBlock*>::const_iterator I = nextSCC.begin(),
		 E = nextSCC.end(); I != E; ++I) {
	    unsigned loopDepth = LI.getLoopDepth(*I);
	    if(loopDepth>prevLoopDepth) {
	      if(loopDepth == loopInst.size()) {
		loopInst.push_back((**I).size());
		loopBB.push_back(1); 
	      }
	      else {
		loopInst[loopDepth] += (**I).size();
		loopBB[loopDepth] += 1;
	      }
	    }
	    else if(loopDepth == prevLoopDepth) {
	      loopInst[loopDepth] += (**I).size();
	      loopBB[loopDepth] += 1;
	    }
	    else {
	      errs() << "#L: " << ++sccNum  << ", Depth: " << prevLoopDepth << ", Inst: " << loopInst[prevLoopDepth] << ", BB: " << loopBB[prevLoopDepth] <<" in \n";
	      loopInst[loopDepth] += loopInst[prevLoopDepth];
	      loopBB[loopDepth] += loopBB[prevLoopDepth];
	      loopBB[loopDepth] += 1;
	      loopInst[loopDepth] += (**I).size();
	      loopInst[prevLoopDepth] = 0;
	      loopBB[prevLoopDepth] = 0;
	    }
	    // errs() << loopDepth << " :D::I: " << (**I).size() << "*;* ";
	    prevLoopDepth = loopDepth;
	  }
	  errs() << "#L: " << outerLoopNum <<", Depth: 1, Inst: " << loopInst[1] << ", BB: " << loopBB[1] <<"\n";
	  if (nextSCC.size() == 1 && SCCI.hasLoop())
	    errs() << " (Has self-loop).";
	}
      }
      errs() << "\n";

      return false;
    }
  };
}

char LoopFinderPass::ID = 0;

// Automatically enable the pass.
// http://adriansampson.net/blog/clangpass.html
static void registerLoopFinderPass(const PassManagerBuilder &,
                         legacy::PassManagerBase &PM) {
  PM.add(new LoopFinderPass());
}
static RegisterStandardPasses
  RegisterMyPass(PassManagerBuilder::EP_EarlyAsPossible,
                 registerLoopFinderPass);
