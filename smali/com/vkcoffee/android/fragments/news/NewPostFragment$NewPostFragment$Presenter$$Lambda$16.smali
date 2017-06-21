.class public Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$16;
.super Ljava/lang/Object;
.source "NewPostFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/news/NewPostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewPostFragment$Presenter$$Lambda$16"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    .prologue
    .line 1945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1946
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$16;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    .line 1947
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p0, "presenter"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    .prologue
    .line 1950
    new-instance v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$16;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$16;-><init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)V

    return-object v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$16;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->lambda$showOptions$490(Landroid/content/DialogInterface;)V

    .line 1955
    return-void
.end method
