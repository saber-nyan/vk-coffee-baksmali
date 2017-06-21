.class public Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment;
.super Landroid/support/v14/preference/PreferenceDialogFragment;
.source "ColorPreferenceDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private getColorPreference()Lcom/vkcoffee/android/ui/ColorPreference;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/ColorPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v1, Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment;-><init>()V

    .line 21
    .local v1, "fragment":Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 22
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 24
    return-object v1
.end method


# virtual methods
.method synthetic lambda$onCreateDialogView$532(I)V
    .locals 2
    .param p1, "selectedColor"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment;->getColorPreference()Lcom/vkcoffee/android/ui/ColorPreference;

    move-result-object v0

    const/high16 v1, -0x1000000

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ColorPreference;->setTransientValue(I)V

    return-void
.end method

.method protected onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x2

    .line 33
    new-instance v3, Lcom/flask/colorpicker/ColorPickerView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/flask/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;)V

    .line 34
    .local v3, "view":Lcom/flask/colorpicker/ColorPickerView;
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment;)Lcom/flask/colorpicker/OnColorSelectedListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flask/colorpicker/ColorPickerView;->addOnColorSelectedListener(Lcom/flask/colorpicker/OnColorSelectedListener;)V

    .line 35
    new-instance v4, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;

    invoke-direct {v4}, Lcom/flask/colorpicker/renderer/FlowerColorWheelRenderer;-><init>()V

    invoke-virtual {v3, v4}, Lcom/flask/colorpicker/ColorPickerView;->setRenderer(Lcom/flask/colorpicker/renderer/ColorWheelRenderer;)V

    .line 36
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment;->getColorPreference()Lcom/vkcoffee/android/ui/ColorPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/ColorPreference;->getValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/flask/colorpicker/ColorPickerView;->setInitialColor(I)V

    .line 37
    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    .line 38
    .local v1, "pad":I
    invoke-virtual {v3, v1, v1, v1, v1}, Lcom/flask/colorpicker/ColorPickerView;->setPadding(IIII)V

    .line 40
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 42
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 43
    invoke-virtual {v0, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    return-object v0
.end method

.method public onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 49
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment;->getColorPreference()Lcom/vkcoffee/android/ui/ColorPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/ColorPreference;->getTransientValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment;->getColorPreference()Lcom/vkcoffee/android/ui/ColorPreference;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/preference/ColorPreferenceDialogFragment;->getColorPreference()Lcom/vkcoffee/android/ui/ColorPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/ColorPreference;->getTransientValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ColorPreference;->setValue(I)V

    .line 52
    :cond_0
    return-void
.end method
