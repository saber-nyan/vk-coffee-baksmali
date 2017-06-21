.class public Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$10;
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
    name = "NewPostFragment$Presenter$$Lambda$10"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

.field private final arg$2:Ljava/util/ArrayList;

.field private final arg$3:[Z

.field private final arg$4:[Z


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;Ljava/util/ArrayList;[Z[Z)V
    .locals 0
    .param p1, "presenter"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;
    .param p2, "arrayList"    # Ljava/util/ArrayList;
    .param p3, "zArr"    # [Z
    .param p4, "zArr2"    # [Z

    .prologue
    .line 1830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1831
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$10;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    .line 1832
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$10;->arg$2:Ljava/util/ArrayList;

    .line 1833
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$10;->arg$3:[Z

    .line 1834
    iput-object p4, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$10;->arg$4:[Z

    .line 1835
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;Ljava/util/ArrayList;[Z[Z)Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    .locals 1
    .param p0, "presenter"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;
    .param p1, "arrayList"    # Ljava/util/ArrayList;
    .param p2, "zArr"    # [Z
    .param p3, "zArr2"    # [Z

    .prologue
    .line 1838
    new-instance v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$10;-><init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;Ljava/util/ArrayList;[Z[Z)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I
    .param p3, "z"    # Z

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$10;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$10;->arg$2:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$10;->arg$3:[Z

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$10;->arg$4:[Z

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->lambda$showOptions$484(Ljava/util/ArrayList;[Z[ZLandroid/content/DialogInterface;IZ)V

    .line 1843
    return-void
.end method
