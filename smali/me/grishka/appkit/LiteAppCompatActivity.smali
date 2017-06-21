.class public Lme/grishka/appkit/LiteAppCompatActivity;
.super Landroid/app/Activity;
.source "LiteAppCompatActivity.java"


# instance fields
.field protected delegate:Landroid/support/v7/app/AppCompatDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lme/grishka/appkit/LiteAppCompatActivity;->delegate:Landroid/support/v7/app/AppCompatDelegate;

    .line 21
    iget-object v0, p0, Lme/grishka/appkit/LiteAppCompatActivity;->delegate:Landroid/support/v7/app/AppCompatDelegate;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->installViewFactory()V

    .line 22
    invoke-virtual {p0}, Lme/grishka/appkit/LiteAppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    return-void
.end method
