.class Lcom/vkcoffee/android/ProfileStatic$3;
.super Ljava/lang/Object;
.source "ProfileStatic.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ProfileStatic;->offlineOnlineBlock(Landroid/view/Menu;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/ProfileStatic$3;->val$activity:Landroid/app/Activity;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "paramAnonymousMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 139
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkcoffee/android/ProfileStatic$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    .local v1, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v2, "\u0412\u043d\u0438\u043c\u0430\u043d\u0438\u0435"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 141
    const-string v3, "\u0412\u044b \u0442\u043e\u0447\u043d\u043e \u0445\u043e\u0442\u0438\u0442\u0435 \u0431\u044b\u0442\u044c Online?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 142
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 143
    const-string v3, "\u041e\u0442\u043c\u0435\u043d\u0430"

    .line 144
    new-instance v4, Lcom/vkcoffee/android/ProfileStatic$3$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/ProfileStatic$3$1;-><init>(Lcom/vkcoffee/android/ProfileStatic$3;)V

    .line 143
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 150
    const-string v3, "\u0422\u043e\u0447\u043d\u0435\u0435 \u043d\u0435 \u0431\u044b\u0432\u0430\u0435\u0442"

    .line 151
    new-instance v4, Lcom/vkcoffee/android/ProfileStatic$3$2;

    iget-object v5, p0, Lcom/vkcoffee/android/ProfileStatic$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v4, p0, v5}, Lcom/vkcoffee/android/ProfileStatic$3$2;-><init>(Lcom/vkcoffee/android/ProfileStatic$3;Landroid/app/Activity;)V

    .line 150
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    invoke-virtual {v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 163
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 166
    const/4 v2, 0x1

    return v2
.end method
