.class public Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$4$$Lambda$2;
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
    name = "DialogsFragment$4$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

.field private final arg$2:I

.field private final arg$3:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;ILjava/lang/String;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p2, "var2"    # I
    .param p3, "var3"    # Ljava/lang/String;

    .prologue
    .line 1657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1658
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$4$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 1659
    iput p2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$4$$Lambda$2;->arg$2:I

    .line 1660
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$4$$Lambda$2;->arg$3:Ljava/lang/String;

    .line 1661
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;ILjava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p1, "var1"    # I
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    .line 1664
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$4$$Lambda$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$4$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$4$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$4$$Lambda$2;->arg$2:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$4$$Lambda$2;->arg$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$onError$460(ILjava/lang/String;)V

    .line 1669
    return-void
.end method
