.class final synthetic Lcom/vkcoffee/android/CaptchaActivity$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/CaptchaActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/CaptchaActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/CaptchaActivity$$Lambda$4;->arg$1:Lcom/vkcoffee/android/CaptchaActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/CaptchaActivity;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/CaptchaActivity$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/CaptchaActivity$$Lambda$4;-><init>(Lcom/vkcoffee/android/CaptchaActivity;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/CaptchaActivity$$Lambda$4;->arg$1:Lcom/vkcoffee/android/CaptchaActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/CaptchaActivity;->lambda$onCreate$251()V

    return-void
.end method
