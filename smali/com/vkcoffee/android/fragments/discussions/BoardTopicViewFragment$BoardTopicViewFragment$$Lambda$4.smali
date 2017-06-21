.class public Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$4;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoardTopicViewFragment$$Lambda$4"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V
    .locals 0
    .param p1, "boardTopicViewFragment"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    .prologue
    .line 1128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1129
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    .line 1130
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "boardTopicViewFragment"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    .prologue
    .line 1133
    new-instance v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$4;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->lambda$onCreateContentView$323(Landroid/view/View;)V

    .line 1138
    return-void
.end method
