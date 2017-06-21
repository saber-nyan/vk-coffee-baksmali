.class public Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListFragment$$Lambda$1;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioListFragment$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/AudioListFragment;

.field private final arg$2:Lcom/vkcoffee/android/AudioFile;

.field private final arg$3:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;Landroid/content/Context;)V
    .locals 0
    .param p1, "audioListFragment"    # Lcom/vkcoffee/android/fragments/AudioListFragment;
    .param p2, "audioFile"    # Lcom/vkcoffee/android/AudioFile;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1501
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/AudioListFragment;

    .line 1502
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListFragment$$Lambda$1;->arg$2:Lcom/vkcoffee/android/AudioFile;

    .line 1503
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListFragment$$Lambda$1;->arg$3:Landroid/content/Context;

    .line 1504
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;Landroid/content/Context;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "audioListFragment"    # Lcom/vkcoffee/android/fragments/AudioListFragment;
    .param p1, "audioFile"    # Lcom/vkcoffee/android/AudioFile;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1507
    new-instance v0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListFragment$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListFragment$$Lambda$1;->arg$2:Lcom/vkcoffee/android/AudioFile;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListFragment$$Lambda$1;->arg$3:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->lambda$showDeleteDialog$311(Lcom/vkcoffee/android/AudioFile;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    .line 1512
    return-void
.end method
