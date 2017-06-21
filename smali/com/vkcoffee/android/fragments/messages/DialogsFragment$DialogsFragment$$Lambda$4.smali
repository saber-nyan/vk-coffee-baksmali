.class public Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$4;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogsFragment$$Lambda$4"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

.field private final arg$2:Landroid/view/LayoutInflater;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p2, "var2"    # Landroid/view/LayoutInflater;

    .prologue
    .line 1356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1357
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 1358
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$4;->arg$2:Landroid/view/LayoutInflater;

    .line 1359
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Landroid/view/LayoutInflater;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p1, "var1"    # Landroid/view/LayoutInflater;

    .prologue
    .line 1362
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$4;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Landroid/view/LayoutInflater;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 2
    .param p1, "var1"    # Ljava/lang/Object;

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$4;->arg$2:Landroid/view/LayoutInflater;

    check-cast p1, Ljava/lang/Long;

    .end local p1    # "var1":Ljava/lang/Object;
    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$onCreateContentView$456(Landroid/view/LayoutInflater;Ljava/lang/Long;)V

    .line 1367
    return-void
.end method
