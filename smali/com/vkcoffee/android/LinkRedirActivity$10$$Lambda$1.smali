.class final synthetic Lcom/vkcoffee/android/LinkRedirActivity$10$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/LinkRedirActivity$10;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/LinkRedirActivity$10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$10$$Lambda$1;->arg$1:Lcom/vkcoffee/android/LinkRedirActivity$10;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/LinkRedirActivity$10;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/LinkRedirActivity$10$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/LinkRedirActivity$10$$Lambda$1;-><init>(Lcom/vkcoffee/android/LinkRedirActivity$10;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$10$$Lambda$1;->arg$1:Lcom/vkcoffee/android/LinkRedirActivity$10;

    invoke-virtual {v0}, Lcom/vkcoffee/android/LinkRedirActivity$10;->lambda$success$642()V

    return-void
.end method
