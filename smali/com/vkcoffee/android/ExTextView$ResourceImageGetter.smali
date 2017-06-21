.class Lcom/vkcoffee/android/ExTextView$ResourceImageGetter;
.super Ljava/lang/Object;
.source "ExTextView.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ExTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceImageGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ExTextView;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ExTextView;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/vkcoffee/android/ExTextView$ResourceImageGetter;->this$0:Lcom/vkcoffee/android/ExTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ExTextView;Lcom/vkcoffee/android/ExTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ExTextView;
    .param p2, "x1"    # Lcom/vkcoffee/android/ExTextView$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ExTextView$ResourceImageGetter;-><init>(Lcom/vkcoffee/android/ExTextView;)V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 100
    const-string/jumbo v4, "empty,"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    const-string/jumbo v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "t":[Ljava/lang/String;
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x7fff0100

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 103
    .local v0, "cd":Landroid/graphics/drawable/ColorDrawable;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 111
    .end local v0    # "cd":Landroid/graphics/drawable/ColorDrawable;
    .end local v2    # "t":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 107
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/vkcoffee/android/ExTextView$ResourceImageGetter;->this$0:Lcom/vkcoffee/android/ExTextView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ExTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 108
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 109
    goto :goto_0

    .line 110
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v3

    .line 111
    .local v3, "x":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method
