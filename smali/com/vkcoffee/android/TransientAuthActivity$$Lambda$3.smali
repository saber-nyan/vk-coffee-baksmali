.class final synthetic Lcom/vkcoffee/android/TransientAuthActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/TransientAuthActivity;

.field private final arg$2:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/TransientAuthActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/TransientAuthActivity$$Lambda$3;->arg$1:Lcom/vkcoffee/android/TransientAuthActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/TransientAuthActivity$$Lambda$3;->arg$2:Landroid/content/Intent;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/TransientAuthActivity;Landroid/content/Intent;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/TransientAuthActivity$$Lambda$3;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/TransientAuthActivity$$Lambda$3;-><init>(Lcom/vkcoffee/android/TransientAuthActivity;Landroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity$$Lambda$3;->arg$1:Lcom/vkcoffee/android/TransientAuthActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/TransientAuthActivity$$Lambda$3;->arg$2:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/TransientAuthActivity;->lambda$onActivityResult$700(Landroid/content/Intent;)V

    return-void
.end method
