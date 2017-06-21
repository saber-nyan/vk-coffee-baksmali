.class final synthetic Lcom/vkcoffee/android/data/Messages$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:I

.field private final arg$2:Z


# direct methods
.method private constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$3;->arg$1:I

    iput-boolean p2, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$3;->arg$2:Z

    return-void
.end method

.method public static lambdaFactory$(IZ)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/data/Messages$$Lambda$3;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/data/Messages$$Lambda$3;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$3;->arg$1:I

    iget-boolean v1, p0, Lcom/vkcoffee/android/data/Messages$$Lambda$3;->arg$2:Z

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/Messages;->lambda$setReadState$265(IZ)V

    return-void
.end method
