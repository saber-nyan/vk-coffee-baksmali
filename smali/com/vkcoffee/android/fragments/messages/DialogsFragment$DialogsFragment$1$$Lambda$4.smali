.class public Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$4;
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
    name = "DialogsFragment$1$$Lambda$4"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

.field private final arg$2:Lcom/vkcoffee/android/DialogEntry;

.field private final arg$3:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/DialogEntry;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p2, "var2"    # Lcom/vkcoffee/android/DialogEntry;
    .param p3, "var3"    # Ljava/util/ArrayList;

    .prologue
    .line 1545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1546
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 1547
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$4;->arg$2:Lcom/vkcoffee/android/DialogEntry;

    .line 1548
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$4;->arg$3:Ljava/util/ArrayList;

    .line 1549
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/DialogEntry;Ljava/util/ArrayList;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p1, "var1"    # Lcom/vkcoffee/android/DialogEntry;
    .param p2, "var2"    # Ljava/util/ArrayList;

    .prologue
    .line 1552
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$4;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Lcom/vkcoffee/android/DialogEntry;Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$4;->arg$2:Lcom/vkcoffee/android/DialogEntry;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$1$$Lambda$4;->arg$3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$null$451(Lcom/vkcoffee/android/DialogEntry;Ljava/util/ArrayList;)V

    .line 1557
    return-void
.end method
