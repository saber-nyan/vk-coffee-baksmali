.class public Lcom/vkcoffee/android/VKAlertDialog$Builder;
.super Landroid/app/AlertDialog$Builder;
.source "VKAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/VKAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field isCancelable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/VKAlertDialog$Builder;->isCancelable:Z

    .line 31
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/VKAlertDialog$Builder;->isCancelable:Z

    .line 36
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 41
    return-void
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 61
    .local v0, "ad":Landroid/app/AlertDialog;
    iget-boolean v1, p0, Lcom/vkcoffee/android/VKAlertDialog$Builder;->isCancelable:Z

    if-eqz v1, :cond_0

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 64
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 65
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0202f1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 67
    :cond_1
    return-object v0
.end method

.method public setCancelable(Z)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "c"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/vkcoffee/android/VKAlertDialog$Builder;->isCancelable:Z

    .line 45
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 50
    .local v0, "ad":Landroid/app/AlertDialog;
    iget-boolean v1, p0, Lcom/vkcoffee/android/VKAlertDialog$Builder;->isCancelable:Z

    if-eqz v1, :cond_0

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 53
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 54
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0202f1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 56
    :cond_1
    return-object v0
.end method
