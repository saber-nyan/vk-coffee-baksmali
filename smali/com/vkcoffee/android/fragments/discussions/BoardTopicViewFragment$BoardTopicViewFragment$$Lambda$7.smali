.class public Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$7;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoardTopicViewFragment$$Lambda$7"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

.field private final arg$2:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "boardTopicViewFragment"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;
    .param p2, "progressDialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 1181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1182
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$7;->arg$1:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    .line 1183
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$7;->arg$2:Landroid/app/ProgressDialog;

    .line 1184
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "boardTopicViewFragment"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;
    .param p1, "progressDialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 1187
    new-instance v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$7;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$7;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Landroid/app/ProgressDialog;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$7;->arg$1:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$7;->arg$2:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->lambda$waitAndSendComment$326(Landroid/app/ProgressDialog;)V

    .line 1192
    return-void
.end method
