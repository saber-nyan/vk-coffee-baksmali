.class final synthetic Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF1;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

.field private final arg$2:Landroid/view/LayoutInflater;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Landroid/view/LayoutInflater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$4;->arg$2:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Landroid/view/LayoutInflater;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$4;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Landroid/view/LayoutInflater;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$4;->arg$2:Landroid/view/LayoutInflater;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$onCreateContentView$456(Landroid/view/LayoutInflater;Ljava/lang/Long;)V

    return-void
.end method
