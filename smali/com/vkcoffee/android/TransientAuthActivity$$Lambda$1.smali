.class final synthetic Lcom/vkcoffee/android/TransientAuthActivity$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/TransientAuthActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/TransientAuthActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/TransientAuthActivity$$Lambda$1;->arg$1:Lcom/vkcoffee/android/TransientAuthActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/TransientAuthActivity;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/TransientAuthActivity$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/TransientAuthActivity$$Lambda$1;-><init>(Lcom/vkcoffee/android/TransientAuthActivity;)V

    return-object v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity$$Lambda$1;->arg$1:Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/TransientAuthActivity;->lambda$onCreate$698(Landroid/content/DialogInterface;)V

    return-void
.end method
