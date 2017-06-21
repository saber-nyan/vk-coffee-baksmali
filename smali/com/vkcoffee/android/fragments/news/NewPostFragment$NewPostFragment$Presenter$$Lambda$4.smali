.class public Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$4;
.super Ljava/lang/Object;
.source "NewPostFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/news/NewPostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewPostFragment$Presenter$$Lambda$4"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

.field private final arg$2:I

.field private final arg$3:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "presenter"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;
    .param p2, "i"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1730
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    .line 1731
    iput p2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$4;->arg$2:I

    .line 1732
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$4;->arg$3:Landroid/content/Intent;

    .line 1733
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;ILandroid/content/Intent;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "presenter"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;
    .param p1, "i"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1736
    new-instance v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$4;-><init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;ILandroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    iget v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$4;->arg$2:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$4;->arg$3:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->lambda$onActivityResult$478(ILandroid/content/Intent;)V

    .line 1741
    return-void
.end method
