.class Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;
.super Ljava/lang/Object;
.source "FooterPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field comments:Landroid/widget/TextView;

.field divider:Landroid/view/View;

.field likes:Landroid/widget/TextView;

.field reposts:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;-><init>()V

    return-void
.end method
