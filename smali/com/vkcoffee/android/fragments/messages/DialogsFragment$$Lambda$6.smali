.class final synthetic Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$6;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$6;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    return-object v0
.end method


# virtual methods
.method public onViewExpansionStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$onCreateContentView$458(Z)V

    return-void
.end method
