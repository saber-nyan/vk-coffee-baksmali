.class public Lcom/vkcoffee/android/PhotoStatic;
.super Ljava/lang/Object;
.source "PhotoStatic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delLoc(Landroid/view/Menu;ZLandroid/app/Activity;II)V
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "z"    # Z
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "oid"    # I
    .param p4, "pid"    # I

    .prologue
    .line 17
    if-eqz p1, :cond_0

    .line 18
    const-string v0, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u043b\u043e\u043a\u0430\u0446\u0438\u044e"

    invoke-interface {p0, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/PhotoStatic$1;

    invoke-direct {v1, p3, p4, p2}, Lcom/vkcoffee/android/PhotoStatic$1;-><init>(IILandroid/app/Activity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 30
    :cond_0
    return-void
.end method

.method public static findGoogle(Landroid/view/Menu;ZLandroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "z"    # Z
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    const-string v0, "\u041d\u0430\u0439\u0442\u0438 \u0432 Google"

    invoke-interface {p0, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/PhotoStatic$2;

    invoke-direct {v1, p2, p3}, Lcom/vkcoffee/android/PhotoStatic$2;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 42
    :cond_0
    return-void
.end method
