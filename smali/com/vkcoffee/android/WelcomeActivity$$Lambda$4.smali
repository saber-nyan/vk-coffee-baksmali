.class final synthetic Lcom/vkcoffee/android/WelcomeActivity$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/WelcomeActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/WelcomeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/WelcomeActivity$$Lambda$4;->arg$1:Lcom/vkcoffee/android/WelcomeActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/WelcomeActivity;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/WelcomeActivity$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/WelcomeActivity$$Lambda$4;-><init>(Lcom/vkcoffee/android/WelcomeActivity;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/WelcomeActivity$$Lambda$4;->arg$1:Lcom/vkcoffee/android/WelcomeActivity;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/WelcomeActivity;->lambda$onCreate$726(Landroid/content/DialogInterface;)V

    return-void
.end method
