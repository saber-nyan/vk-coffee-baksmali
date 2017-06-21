.class public Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$11;
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
    name = "NewPostFragment$Presenter$$Lambda$11"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

.field private final arg$2:[Z

.field private final arg$3:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;[ZLandroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "presenter"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;
    .param p2, "zArr"    # [Z
    .param p3, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 1851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1852
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$11;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    .line 1853
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$11;->arg$2:[Z

    .line 1854
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$11;->arg$3:Landroid/content/SharedPreferences;

    .line 1855
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;[ZLandroid/content/SharedPreferences;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "presenter"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;
    .param p1, "zArr"    # [Z
    .param p2, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 1858
    new-instance v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$11;-><init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;[ZLandroid/content/SharedPreferences;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$11;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$11;->arg$2:[Z

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$11;->arg$3:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->lambda$showOptions$485([ZLandroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V

    .line 1863
    return-void
.end method
