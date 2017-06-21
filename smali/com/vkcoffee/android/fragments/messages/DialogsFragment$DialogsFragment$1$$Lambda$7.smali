.class public Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$7;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogsFragment$1$$Lambda$7"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

.field private final arg$2:Lcom/vkcoffee/android/DialogEntry;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/DialogEntry;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p2, "var2"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 1614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1615
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$7;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 1616
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$7;->arg$2:Lcom/vkcoffee/android/DialogEntry;

    .line 1617
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/DialogEntry;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p1, "var1"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 1620
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$7;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$7;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/DialogEntry;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$7;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$7;->arg$2:Lcom/vkcoffee/android/DialogEntry;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$null$447(Lcom/vkcoffee/android/DialogEntry;)V

    .line 1625
    return-void
.end method
