.class public Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$7;
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
    name = "PostViewFragment$$Lambda$7"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0
    .param p1, "postViewFragment"    # Lcom/vkcoffee/android/fragments/PostViewFragment;

    .prologue
    .line 2109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2110
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$7;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    .line 2111
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "postViewFragment"    # Lcom/vkcoffee/android/fragments/PostViewFragment;

    .prologue
    .line 2114
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$7;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$7;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2118
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$7;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->lambda$onOptionsItemSelected$519()V

    .line 2119
    return-void
.end method
