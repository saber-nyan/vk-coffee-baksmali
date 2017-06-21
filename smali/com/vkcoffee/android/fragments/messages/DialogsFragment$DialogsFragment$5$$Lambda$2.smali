.class public Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$5$$Lambda$2;
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
    name = "DialogsFragment$5$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

.field private final arg$2:Z

.field private final arg$3:Ljava/util/ArrayList;

.field private final arg$4:I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;ZLjava/util/ArrayList;I)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p2, "var2"    # Z
    .param p3, "var3"    # Ljava/util/ArrayList;
    .param p4, "var4"    # I

    .prologue
    .line 1701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1702
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$5$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 1703
    iput-boolean p2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$5$$Lambda$2;->arg$2:Z

    .line 1704
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$5$$Lambda$2;->arg$3:Ljava/util/ArrayList;

    .line 1705
    iput p4, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$5$$Lambda$2;->arg$4:I

    .line 1706
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;ZLjava/util/ArrayList;I)Ljava/lang/Runnable;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    .param p1, "var1"    # Z
    .param p2, "var2"    # Ljava/util/ArrayList;
    .param p3, "var3"    # I

    .prologue
    .line 1709
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$5$$Lambda$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$5$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;ZLjava/util/ArrayList;I)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$5$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$5$$Lambda$2;->arg$2:Z

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$5$$Lambda$2;->arg$3:Ljava/util/ArrayList;

    iget v3, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$5$$Lambda$2;->arg$4:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$onDialogsLoaded$462(ZLjava/util/ArrayList;I)V

    .line 1714
    return-void
.end method
