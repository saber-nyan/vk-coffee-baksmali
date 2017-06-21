.class public Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$2;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoardTopicViewFragment$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V
    .locals 0
    .param p1, "boardTopicViewFragment"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    .prologue
    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    .line 1099
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)Landroid/view/View$OnKeyListener;
    .locals 1
    .param p0, "boardTopicViewFragment"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    .prologue
    .line 1102
    new-instance v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V

    return-object v0
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->lambda$onCreateContentView$320(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
