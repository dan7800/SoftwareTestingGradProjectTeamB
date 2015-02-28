package android.support.v4.content;

import java.util.concurrent.atomic.*;
import java.util.concurrent.*;

abstract class ModernAsyncTask<Params, Progress, Result>
{
    public static final Executor THREAD_POOL_EXECUTOR;
    private static final ThreadFactory eZ;
    private static final BlockingQueue<Runnable> fa;
    private static final r fb;
    private static volatile Executor fc;
    private final s<Params, Result> fd;
    private final FutureTask<Result> fe;
    private volatile ModernAsyncTask$Status ff;
    private final AtomicBoolean fg;
    
    static {
        eZ = new m();
        fa = new LinkedBlockingQueue<Runnable>(10);
        THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, ModernAsyncTask.fa, ModernAsyncTask.eZ);
        fb = new r((byte)0);
        ModernAsyncTask.fc = ModernAsyncTask.THREAD_POOL_EXECUTOR;
    }
    
    public ModernAsyncTask() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokespecial   java/lang/Object.<init>:()V
        //     4: aload_0        
        //     5: getstatic       android/support/v4/content/ModernAsyncTask$Status.fm:Landroid/support/v4/content/ModernAsyncTask$Status;
        //     8: putfield        android/support/v4/content/ModernAsyncTask.ff:Landroid/support/v4/content/ModernAsyncTask$Status;
        //    11: aload_0        
        //    12: new             Ljava/util/concurrent/atomic/AtomicBoolean;
        //    15: dup            
        //    16: invokespecial   java/util/concurrent/atomic/AtomicBoolean.<init>:()V
        //    19: putfield        android/support/v4/content/ModernAsyncTask.fg:Ljava/util/concurrent/atomic/AtomicBoolean;
        //    22: aload_0        
        //    23: new             new            !!! ERROR
        //    26: dup            
        //    27: aload_0        
        //    28: invokespecial   invokespecial  !!! ERROR
        //    31: putfield        android/support/v4/content/ModernAsyncTask.fd:Landroid/support/v4/content/s;
        //    34: aload_0        
        //    35: new             new            !!! ERROR
        //    38: dup            
        //    39: aload_0        
        //    40: aload_0        
        //    41: getfield        android/support/v4/content/ModernAsyncTask.fd:Landroid/support/v4/content/s;
        //    44: invokespecial   invokespecial  !!! ERROR
        //    47: putfield        android/support/v4/content/ModernAsyncTask.fe:Ljava/util/concurrent/FutureTask;
        //    50: return         
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalArgumentException: Argument 'typeArguments' must not have any null elements.
        //     at com.strobel.core.VerifyArgument.noNullElementsAndNotEmpty(VerifyArgument.java:145)
        //     at com.strobel.assembler.metadata.CoreMetadataFactory$UnresolvedType.makeGenericType(CoreMetadataFactory.java:566)
        //     at com.strobel.assembler.metadata.CoreMetadataFactory.makeParameterizedType(CoreMetadataFactory.java:154)
        //     at com.strobel.assembler.metadata.signatures.Reifier.visitClassTypeSignature(Reifier.java:125)
        //     at com.strobel.assembler.metadata.signatures.ClassTypeSignature.accept(ClassTypeSignature.java:46)
        //     at com.strobel.assembler.metadata.MetadataParser.parseClassSignature(MetadataParser.java:394)
        //     at com.strobel.assembler.metadata.ClassFileReader.populateBaseTypes(ClassFileReader.java:665)
        //     at com.strobel.assembler.metadata.ClassFileReader.readClass(ClassFileReader.java:438)
        //     at com.strobel.assembler.metadata.ClassFileReader.readClass(ClassFileReader.java:366)
        //     at com.strobel.assembler.metadata.MetadataSystem.resolveType(MetadataSystem.java:124)
        //     at com.strobel.decompiler.NoRetryMetadataSystem.resolveType(DecompilerDriver.java:447)
        //     at com.strobel.assembler.metadata.MetadataSystem.resolveCore(MetadataSystem.java:76)
        //     at com.strobel.assembler.metadata.MetadataResolver.resolve(MetadataResolver.java:104)
        //     at com.strobel.assembler.metadata.CoreMetadataFactory$UnresolvedType.resolve(CoreMetadataFactory.java:576)
        //     at com.strobel.assembler.metadata.MetadataResolver.resolve(MetadataResolver.java:128)
        //     at com.strobel.assembler.metadata.CoreMetadataFactory$UnresolvedType.resolve(CoreMetadataFactory.java:586)
        //     at com.strobel.assembler.metadata.MethodReference.resolve(MethodReference.java:172)
        //     at com.strobel.decompiler.ast.TypeAnalysis.inferCall(TypeAnalysis.java:2420)
        //     at com.strobel.decompiler.ast.TypeAnalysis.doInferTypeForExpression(TypeAnalysis.java:1029)
        //     at com.strobel.decompiler.ast.TypeAnalysis.inferTypeForExpression(TypeAnalysis.java:803)
        //     at com.strobel.decompiler.ast.TypeAnalysis.runInference(TypeAnalysis.java:672)
        //     at com.strobel.decompiler.ast.TypeAnalysis.runInference(TypeAnalysis.java:655)
        //     at com.strobel.decompiler.ast.TypeAnalysis.runInference(TypeAnalysis.java:365)
        //     at com.strobel.decompiler.ast.TypeAnalysis.run(TypeAnalysis.java:96)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:109)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createConstructor(AstBuilder.java:692)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:529)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    protected static void av() {
    }
    
    private Result b(final Result result) {
        ModernAsyncTask.fb.obtainMessage(1, (Object)new q(this, new Object[] { result })).sendToTarget();
        return result;
    }
    
    public final ModernAsyncTask<Params, Progress, Result> a(final Executor executor) {
        if (this.ff != ModernAsyncTask$Status.fm) {
            switch (p.fj[this.ff.ordinal()]) {
                case 1: {
                    throw new IllegalStateException("Cannot execute task: the task is already running.");
                }
                case 2: {
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
                }
            }
        }
        this.ff = ModernAsyncTask$Status.fn;
        this.fd.fq = null;
        executor.execute(this.fe);
        return this;
    }
    
    protected abstract Result au();
    
    public final boolean aw() {
        return this.fe.cancel(false);
    }
    
    protected void onCancelled() {
    }
    
    protected void onPostExecute(final Result result) {
    }
}
