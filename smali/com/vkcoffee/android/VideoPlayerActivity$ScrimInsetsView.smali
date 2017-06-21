.class Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;
.super Landroid/view/View;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrimInsetsView"
.end annotation


# instance fields
.field private bottomGradient:Landroid/graphics/drawable/Drawable;

.field private edgePaint:Landroid/graphics/Paint;

.field private insets:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

.field private topGradient:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x80

    .line 1155
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    .line 1156
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1151
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->insets:Landroid/graphics/Rect;

    .line 1157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->edgePaint:Landroid/graphics/Paint;

    .line 1158
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->edgePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1159
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->topGradient:Landroid/graphics/drawable/Drawable;

    .line 1160
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->bottomGradient:Landroid/graphics/drawable/Drawable;

    .line 1161
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->topGradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1162
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->bottomGradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1163
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x42e00000    # 112.0f

    const/4 v2, 0x0

    .line 1167
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1168
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_0

    .line 1169
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->edgePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->edgePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->topGradient:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v7}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->insets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1175
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->topGradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1176
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->bottomGradient:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->getHeight()I

    move-result v2

    invoke-static {v7}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->insets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1177
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->bottomGradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1178
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->insets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1182
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->invalidate()V

    .line 1183
    return-void
.end method
