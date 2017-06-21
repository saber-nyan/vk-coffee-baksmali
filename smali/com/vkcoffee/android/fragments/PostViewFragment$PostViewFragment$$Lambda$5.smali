.class public Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$5;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/DividerItemDecoration$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostViewFragment$$Lambda$5"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0
    .param p1, "postViewFragment"    # Lcom/vkcoffee/android/fragments/PostViewFragment;

    .prologue
    .line 2077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2078
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$5;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    .line 2079
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/views/DividerItemDecoration$Provider;
    .locals 1
    .param p0, "postViewFragment"    # Lcom/vkcoffee/android/fragments/PostViewFragment;

    .prologue
    .line 2082
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$5;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    return-object v0
.end method


# virtual methods
.method public needDrawDividerAfter(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$5;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->lambda$onViewCreated$517(I)Z

    move-result v0

    return v0
.end method
