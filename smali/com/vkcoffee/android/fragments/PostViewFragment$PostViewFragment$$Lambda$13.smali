.class public Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$13;
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
    name = "PostViewFragment$$Lambda$13"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

.field private final arg$2:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "postViewFragment"    # Lcom/vkcoffee/android/fragments/PostViewFragment;
    .param p2, "progressDialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 2215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2216
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$13;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    .line 2217
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$13;->arg$2:Landroid/app/ProgressDialog;

    .line 2218
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "postViewFragment"    # Lcom/vkcoffee/android/fragments/PostViewFragment;
    .param p1, "progressDialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 2221
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$13;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$13;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/app/ProgressDialog;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$13;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$13;->arg$2:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->lambda$waitAndSendComment$525(Landroid/app/ProgressDialog;)V

    .line 2226
    return-void
.end method
