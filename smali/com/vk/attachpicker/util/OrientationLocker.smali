.class public Lcom/vk/attachpicker/util/OrientationLocker;
.super Ljava/lang/Object;
.source "OrientationLocker.java"


# instance fields
.field private prevOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, -0xa

    iput v0, p0, Lcom/vk/attachpicker/util/OrientationLocker;->prevOrientation:I

    return-void
.end method


# virtual methods
.method public lockOrientation(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x9

    const/4 v5, 0x1

    .line 16
    iget v3, p0, Lcom/vk/attachpicker/util/OrientationLocker;->prevOrientation:I

    const/16 v4, -0xa

    if-eq v3, v4, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    iput v3, p0, Lcom/vk/attachpicker/util/OrientationLocker;->prevOrientation:I

    .line 21
    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 22
    .local v0, "manager":Landroid/view/WindowManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 23
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 24
    .local v2, "rotation":I
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 26
    .local v1, "orientation":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 27
    if-ne v1, v5, :cond_2

    .line 28
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 68
    .end local v0    # "manager":Landroid/view/WindowManager;
    .end local v1    # "orientation":I
    .end local v2    # "rotation":I
    :catch_0
    move-exception v3

    goto :goto_0

    .line 30
    .restart local v0    # "manager":Landroid/view/WindowManager;
    .restart local v1    # "orientation":I
    .restart local v2    # "rotation":I
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_3

    .line 31
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 33
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 36
    :cond_4
    if-ne v2, v5, :cond_7

    .line 37
    if-ne v1, v5, :cond_6

    .line 38
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_5

    .line 39
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 41
    :cond_5
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 44
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 46
    :cond_7
    if-nez v2, :cond_9

    .line 47
    if-ne v1, v7, :cond_8

    .line 48
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 50
    :cond_8
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 53
    :cond_9
    if-ne v1, v7, :cond_b

    .line 54
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_a

    .line 55
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 57
    :cond_a
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 60
    :cond_b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_c

    .line 61
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 63
    :cond_c
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public unlockOrientation(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    const/16 v0, -0xa

    :try_start_0
    iput v0, p0, Lcom/vk/attachpicker/util/OrientationLocker;->prevOrientation:I

    .line 76
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method
