.class public Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$18;
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
    name = "NewPostFragment$Presenter$$Lambda$18"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

.field private final arg$2:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0
    .param p1, "presenter"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;
    .param p2, "userProfile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 1980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1981
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$18;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    .line 1982
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$18;->arg$2:Lcom/vkcoffee/android/UserProfile;

    .line 1983
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;Lcom/vkcoffee/android/UserProfile;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "presenter"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;
    .param p1, "userProfile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 1986
    new-instance v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$18;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$18;-><init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;Lcom/vkcoffee/android/UserProfile;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$18;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$18;->arg$2:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->lambda$null$474(Lcom/vkcoffee/android/UserProfile;)V

    .line 1991
    return-void
.end method
