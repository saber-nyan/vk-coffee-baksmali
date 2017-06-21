.class Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;
.super Ljava/lang/Object;
.source "FABHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/FABHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnClickListenerDelegate"
.end annotation


# instance fields
.field private final mDelegate:Landroid/view/View$OnClickListener;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "delegate"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;->mTitle:Ljava/lang/CharSequence;

    .line 201
    iput-object p2, p0, Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 202
    iput-object p3, p0, Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;->mDelegate:Landroid/view/View$OnClickListener;

    .line 203
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Lcom/vkcoffee/android/ui/FABHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x2"    # Landroid/view/View$OnClickListener;
    .param p4, "x3"    # Lcom/vkcoffee/android/ui/FABHelper$1;

    .prologue
    .line 193
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;
    .param p1, "x1"    # Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;->attachTo(Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;)V

    return-void
.end method

.method private attachTo(Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;)V
    .locals 1
    .param p1, "ab"    # Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    .prologue
    .line 206
    invoke-virtual {p1, p0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 207
    invoke-virtual {p1, p0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;->mDelegate:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;->mDelegate:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 216
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/FABHelper$OnClickListenerDelegate;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 222
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 224
    :cond_0
    return v2
.end method
