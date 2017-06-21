.class public Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$17;
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
    name = "NewPostFragment$Presenter$$Lambda$17"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

.field private final arg$2:Lcom/vkcoffee/android/attachments/PendingVideoAttachment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;Lcom/vkcoffee/android/attachments/PendingVideoAttachment;)V
    .locals 0
    .param p1, "presenter"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;
    .param p2, "pendingVideoAttachment"    # Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    .prologue
    .line 1962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1963
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$17;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    .line 1964
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$17;->arg$2:Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    .line 1965
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;Lcom/vkcoffee/android/attachments/PendingVideoAttachment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "presenter"    # Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;
    .param p1, "pendingVideoAttachment"    # Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    .prologue
    .line 1968
    new-instance v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$17;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$17;-><init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;Lcom/vkcoffee/android/attachments/PendingVideoAttachment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$17;->arg$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$17;->arg$2:Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->lambda$null$477(Lcom/vkcoffee/android/attachments/PendingVideoAttachment;Landroid/content/DialogInterface;I)V

    .line 1973
    return-void
.end method
