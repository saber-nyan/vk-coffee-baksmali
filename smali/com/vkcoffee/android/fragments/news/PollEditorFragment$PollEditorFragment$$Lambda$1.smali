.class public Lcom/vkcoffee/android/fragments/news/PollEditorFragment$PollEditorFragment$$Lambda$1;
.super Ljava/lang/Object;
.source "PollEditorFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/news/PollEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PollEditorFragment$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/news/PollEditorFragment;)V
    .locals 0
    .param p1, "pollEditorFragment"    # Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$PollEditorFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    .line 419
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/news/PollEditorFragment;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 1
    .param p0, "pollEditorFragment"    # Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    .prologue
    .line 422
    new-instance v0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$PollEditorFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$PollEditorFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/news/PollEditorFragment;)V

    return-object v0
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$PollEditorFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->lambda$initAnimation$491()Z

    move-result v0

    return v0
.end method
