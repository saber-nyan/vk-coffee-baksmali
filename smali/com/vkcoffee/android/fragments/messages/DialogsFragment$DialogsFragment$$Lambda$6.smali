.class public Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$6;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogsFragment$$Lambda$6"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .prologue
    .line 1393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1394
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 1395
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .prologue
    .line 1398
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$6;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$6;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    return-object v0
.end method


# virtual methods
.method public onViewExpansionStateChanged(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$onCreateContentView$458(Z)V

    .line 1403
    return-void
.end method
