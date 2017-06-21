.class public Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$14;
.super Ljava/lang/Object;
.source "NewPostFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/news/NewPostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewPostFragment$Presenter$$Lambda$14"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

.field private final arg$2:[Z


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;[Z)V
    .locals 0
    .param p1, "presenter"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;
    .param p2, "zArr"    # [Z

    .prologue
    .line 1906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1907
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$14;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    .line 1908
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$14;->arg$2:[Z

    .line 1909
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;[Z)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "presenter"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;
    .param p1, "zArr"    # [Z

    .prologue
    .line 1912
    new-instance v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$14;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$14;-><init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;[Z)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$14;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$14;->arg$2:[Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->lambda$showOptions$488([ZLandroid/content/DialogInterface;I)V

    .line 1917
    return-void
.end method
