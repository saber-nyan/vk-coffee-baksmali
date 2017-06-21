.class final synthetic Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

.field private final arg$2:Z


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$7;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iput-boolean p2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$7;->arg$2:Z

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Z)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$7;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$7;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Z)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$7;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$7;->arg$2:Z

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$updateList$463(Z)V

    return-void
.end method
