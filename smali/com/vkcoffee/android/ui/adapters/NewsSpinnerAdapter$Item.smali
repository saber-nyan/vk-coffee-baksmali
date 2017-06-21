.class public Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;
.super Ljava/lang/Object;
.source "NewsSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field final checkTitle:Ljava/lang/String;

.field final checked:I

.field final iconRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public final listId:I

.field final name:Ljava/lang/String;

.field onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "iconRes"    # I
    .param p3, "listId"    # I

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;->name:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;->iconRes:I

    .line 43
    iput p3, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;->listId:I

    .line 44
    iput-object v1, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;->checkTitle:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;->checked:I

    .line 46
    iput-object v1, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "iconRes"    # I
    .param p3, "listId"    # I
    .param p4, "checkTitle"    # Ljava/lang/String;
    .param p5, "checked"    # Z
    .param p6, "onCheckedChangeListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;->name:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;->iconRes:I

    .line 53
    iput p3, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;->listId:I

    .line 54
    iput-object p4, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;->checkTitle:Ljava/lang/String;

    .line 55
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;->checked:I

    .line 56
    iput-object p6, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 57
    return-void

    .line 55
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;->name:Ljava/lang/String;

    return-object v0
.end method
