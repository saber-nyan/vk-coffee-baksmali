.class public Lcom/vkcoffee/android/fragments/news/PollEditorFragment$PollEditorFragment$$Lambda$2;
.super Ljava/lang/Object;
.source "PollEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/news/PollEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PollEditorFragment$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/news/PollEditorFragment;)V
    .locals 0
    .param p1, "pollEditorFragment"    # Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$PollEditorFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    .line 404
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/news/PollEditorFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "pollEditorFragment"    # Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    .prologue
    .line 407
    new-instance v0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$PollEditorFragment$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$PollEditorFragment$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/news/PollEditorFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$PollEditorFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->lambda$onBackPressed$492(Landroid/content/DialogInterface;I)V

    .line 412
    return-void
.end method
