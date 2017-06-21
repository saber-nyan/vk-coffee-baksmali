.class public Lcom/vkcoffee/android/ui/FragmentHelper;
.super Ljava/lang/Object;
.source "FragmentHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static extractArgs(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    const-string/jumbo v0, "args"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static extractFragment(Landroid/content/Intent;)Ljava/lang/Class;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    const-string/jumbo v1, "class"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v1, "AudioListFragment"

    const-string/jumbo v2, "class"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-class v1, Lcom/vkcoffee/android/fragments/AudioListFragment;

    goto :goto_0

    .line 78
    :cond_0
    throw v0
.end method

.method public static replace(Landroid/app/Activity;Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f10001b

    const-string/jumbo v2, "news"

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 53
    return-object p1
.end method

.method public static replace(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)Landroid/app/Fragment;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "navigationDrawerDelegate"    # Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;",
            ")",
            "Landroid/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 41
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p0, v0}, Lcom/vkcoffee/android/ui/FragmentHelper;->replace(Landroid/app/Activity;Landroid/app/Fragment;)Landroid/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 47
    .end local v0    # "fragment":Landroid/app/Fragment;
    :goto_0
    return-object v2

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    invoke-static {v2, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    const v2, 0x7f080165

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 47
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static replace(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)Landroid/app/Fragment;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "clazz"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "navigationDrawerDelegate"    # Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 26
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "com.vkcoffee.android.fragments."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 27
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 28
    .local v1, "fragment":Landroid/app/Fragment;
    invoke-virtual {v1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 29
    invoke-static {p0, v1}, Lcom/vkcoffee/android/ui/FragmentHelper;->replace(Landroid/app/Activity;Landroid/app/Fragment;)Landroid/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 34
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "fragment":Landroid/app/Fragment;
    :goto_0
    return-object v3

    .line 30
    :catch_0
    move-exception v2

    .line 31
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    invoke-static {v3, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const v3, 0x7f080165

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 34
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static replaceWithBackStack(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)Landroid/app/Fragment;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "navigationDrawerDelegate"    # Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;",
            ")",
            "Landroid/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 59
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f10001b

    const-string/jumbo v4, "news"

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 61
    invoke-virtual {v0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "fragment":Landroid/app/Fragment;
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    invoke-static {v2, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    const v2, 0x7f080165

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 67
    const/4 v0, 0x0

    goto :goto_0
.end method
