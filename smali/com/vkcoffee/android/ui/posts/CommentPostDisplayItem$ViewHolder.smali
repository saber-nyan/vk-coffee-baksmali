.class Lcom/vkcoffee/android/ui/posts/CommentPostDisplayItem$ViewHolder;
.super Ljava/lang/Object;
.source "CommentPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/posts/CommentPostDisplayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field name:Landroid/widget/TextView;

.field photo:Landroid/widget/ImageView;

.field text:Landroid/widget/TextView;

.field time:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/posts/CommentPostDisplayItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/posts/CommentPostDisplayItem$1;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/posts/CommentPostDisplayItem$ViewHolder;-><init>()V

    return-void
.end method
