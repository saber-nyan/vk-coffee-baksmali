.class public Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$13;
.super Ljava/lang/Object;
.source "NewPostFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/news/NewPostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewPostFragment$Presenter$$Lambda$13"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

.field private final arg$2:[Z

.field private final arg$3:[Z


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;[Z[Z)V
    .locals 0
    .param p1, "presenter"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;
    .param p2, "zArr"    # [Z
    .param p3, "zArr2"    # [Z

    .prologue
    .line 1887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1888
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$13;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    .line 1889
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$13;->arg$2:[Z

    .line 1890
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$13;->arg$3:[Z

    .line 1891
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;[Z[Z)Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    .locals 1
    .param p0, "presenter"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;
    .param p1, "zArr"    # [Z
    .param p2, "zArr2"    # [Z

    .prologue
    .line 1894
    new-instance v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$13;-><init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;[Z[Z)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I
    .param p3, "z"    # Z

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$13;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$13;->arg$2:[Z

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$13;->arg$3:[Z

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->lambda$showOptions$487([Z[ZLandroid/content/DialogInterface;IZ)V

    .line 1899
    return-void
.end method
