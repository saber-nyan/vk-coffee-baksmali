.class Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;
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
    name = "OnMenuClickListenerDelegate"
.end annotation


# instance fields
.field private final mDelegate:Lcom/vkcoffee/android/ui/FABHelper$OnOptionItemSelectedListener;

.field private final mMenuItem:Landroid/view/MenuItem;


# direct methods
.method private constructor <init>(Landroid/view/MenuItem;Lcom/vkcoffee/android/ui/FABHelper$OnOptionItemSelectedListener;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "delegate"    # Lcom/vkcoffee/android/ui/FABHelper$OnOptionItemSelectedListener;

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;->mMenuItem:Landroid/view/MenuItem;

    .line 235
    iput-object p2, p0, Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;->mDelegate:Lcom/vkcoffee/android/ui/FABHelper$OnOptionItemSelectedListener;

    .line 236
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/MenuItem;Lcom/vkcoffee/android/ui/FABHelper$OnOptionItemSelectedListener;Lcom/vkcoffee/android/ui/FABHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/MenuItem;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/FABHelper$OnOptionItemSelectedListener;
    .param p3, "x2"    # Lcom/vkcoffee/android/ui/FABHelper$1;

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;-><init>(Landroid/view/MenuItem;Lcom/vkcoffee/android/ui/FABHelper$OnOptionItemSelectedListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;
    .param p1, "x1"    # Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;->attachTo(Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;)V

    return-void
.end method

.method private attachTo(Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;)V
    .locals 2
    .param p1, "ab"    # Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    .prologue
    .line 239
    invoke-virtual {p1, p0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 240
    invoke-virtual {p1, p0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;->mMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 243
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;->mDelegate:Lcom/vkcoffee/android/ui/FABHelper$OnOptionItemSelectedListener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;->mDelegate:Lcom/vkcoffee/android/ui/FABHelper$OnOptionItemSelectedListener;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/FABHelper$OnOptionItemSelectedListener;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 250
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/FABHelper$OnMenuClickListenerDelegate;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 256
    return v2
.end method
