.class final synthetic Lcom/vkcoffee/android/fragments/SignupCodeFragment$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/SignupCodeFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment$$Lambda$5;->arg$1:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/SignupCodeFragment$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/SignupCodeFragment$$Lambda$5;-><init>(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment$$Lambda$5;->arg$1:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->lambda$null$170()V

    return-void
.end method
