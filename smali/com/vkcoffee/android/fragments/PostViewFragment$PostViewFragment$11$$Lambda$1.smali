.class public Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$11$$Lambda$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostViewFragment$11$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0
    .param p1, "anonymousClass11"    # Lcom/vkcoffee/android/fragments/PostViewFragment;

    .prologue
    .line 2284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2285
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$11$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    .line 2286
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "anonymousClass11"    # Lcom/vkcoffee/android/fragments/PostViewFragment;

    .prologue
    .line 2289
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$11$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$11$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$11$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->lambda$success$527()V

    .line 2294
    return-void
.end method
