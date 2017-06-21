.class final synthetic Lcom/vkcoffee/android/Emoji$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vkcoffee/android/Emoji$$Lambda$1;->arg$1:I

    return-void
.end method

.method public static lambdaFactory$(I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/Emoji$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/Emoji$$Lambda$1;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget v0, p0, Lcom/vkcoffee/android/Emoji$$Lambda$1;->arg$1:I

    invoke-static {v0}, Lcom/vkcoffee/android/Emoji;->lambda$loadPage$219(I)V

    return-void
.end method
