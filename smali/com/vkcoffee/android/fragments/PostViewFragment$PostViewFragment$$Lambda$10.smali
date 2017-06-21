.class public Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$10;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostViewFragment$$Lambda$10"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

.field private final arg$2:Ljava/util/ArrayList;

.field private final arg$3:Lcom/vkcoffee/android/NewsComment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsComment;)V
    .locals 0
    .param p1, "postViewFragment"    # Lcom/vkcoffee/android/fragments/PostViewFragment;
    .param p2, "arrayList"    # Ljava/util/ArrayList;
    .param p3, "newsComment"    # Lcom/vkcoffee/android/NewsComment;

    .prologue
    .line 2162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2163
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$10;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    .line 2164
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$10;->arg$2:Ljava/util/ArrayList;

    .line 2165
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$10;->arg$3:Lcom/vkcoffee/android/NewsComment;

    .line 2166
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsComment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "postViewFragment"    # Lcom/vkcoffee/android/fragments/PostViewFragment;
    .param p1, "arrayList"    # Ljava/util/ArrayList;
    .param p2, "newsComment"    # Lcom/vkcoffee/android/NewsComment;

    .prologue
    .line 2169
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$10;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsComment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$10;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$10;->arg$2:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$10;->arg$3:Lcom/vkcoffee/android/NewsComment;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->lambda$showCommentActions$522(Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsComment;Landroid/content/DialogInterface;I)V

    .line 2174
    return-void
.end method
