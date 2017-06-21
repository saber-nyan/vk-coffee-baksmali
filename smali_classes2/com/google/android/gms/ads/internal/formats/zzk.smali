.class public Lcom/google/android/gms/ads/internal/formats/zzk;
.super Lcom/google/android/gms/internal/zzcj$zza;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private zzoQ:Landroid/widget/FrameLayout;

.field private final zzpV:Ljava/lang/Object;

.field private final zzyD:Landroid/widget/FrameLayout;

.field private zzyE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzyF:Lcom/google/android/gms/ads/internal/formats/zzb;

.field zzyG:Z

.field zzyH:I

.field zzyI:I

.field private zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcj$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzpV:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyE:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyG:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyD:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzoQ:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyD:Landroid/widget/FrameLayout;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzjk;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyD:Landroid/widget/FrameLayout;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzjk;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyD:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/formats/zzk;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzoQ:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzoQ:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzoQ:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyE:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyF:Lcom/google/android/gms/ads/internal/formats/zzb;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    return-void
.end method

.method getMeasuredHeight()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyD:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getMeasuredWidth()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyD:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v6, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzpV:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-nez v0, :cond_0

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzj(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v7, "width"

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzq(I)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v7, "height"

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzq(I)I

    move-result v1

    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "x"

    iget v7, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v7}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzq(I)I

    move-result v7

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "y"

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v4}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzq(I)I

    move-result v4

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to get view rectangle for view "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string/jumbo v0, "x"

    iget v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyH:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzq(I)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "y"

    iget v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyI:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzq(I)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string/jumbo v0, "width"

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/formats/zzk;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzq(I)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "height"

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/formats/zzk;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzq(I)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyF:Lcom/google/android/gms/ads/internal/formats/zzb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyF:Lcom/google/android/gms/ads/internal/formats/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzb;->zzdI()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    const-string/jumbo v1, "1007"

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/google/android/gms/ads/internal/formats/zzh;->zza(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :goto_4
    monitor-exit v6

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "Unable to get click location"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const-string/jumbo v0, "Unable to get native ad view bounding box"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyE:Ljava/util/Map;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/formats/zzh;->zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4
.end method

.method public onGlobalLayout()V
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/formats/zzk;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/formats/zzk;->getMeasuredHeight()I

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzoQ:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyG:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyD:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzh(Landroid/view/View;)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onScrollChanged()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyD:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzh(Landroid/view/View;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzc(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyH:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyI:I

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzb(Landroid/view/MotionEvent;)V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzK(Ljava/lang/String;)Lcom/google/android/gms/dynamic/zzd;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzC(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzpV:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyG:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzi(Landroid/view/View;)V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/ads/internal/formats/zzi;

    if-nez v1, :cond_0

    const-string/jumbo v0, "Not an instance of native engine. This is most likely a transient error"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzi;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    instance-of v1, v1, Lcom/google/android/gms/ads/internal/formats/zzg;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    check-cast v1, Lcom/google/android/gms/ads/internal/formats/zzg;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzdP()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    check-cast v1, Lcom/google/android/gms/ads/internal/formats/zzg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzc(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzoQ:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzd(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/ads/internal/formats/zzb;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyF:Lcom/google/android/gms/ads/internal/formats/zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyF:Lcom/google/android/gms/ads/internal/formats/zzb;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyE:Ljava/util/Map;

    const-string/jumbo v3, "1007"

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyF:Lcom/google/android/gms/ads/internal/formats/zzb;

    invoke-virtual {v5}, Lcom/google/android/gms/ads/internal/formats/zzb;->zzdI()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzoQ:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyF:Lcom/google/android/gms/ads/internal/formats/zzb;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/ads/internal/formats/zzk$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/ads/internal/formats/zzk$1;-><init>(Lcom/google/android/gms/ads/internal/formats/zzk;Lcom/google/android/gms/ads/internal/formats/zzi;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyD:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzg(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyD:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzi(Landroid/view/View;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    instance-of v1, v1, Lcom/google/android/gms/ads/internal/formats/zzg;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    check-cast v1, Lcom/google/android/gms/ads/internal/formats/zzg;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzc(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/dynamic/zzd;)V
    .locals 4

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyE:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method zzc(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyD:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    sub-float v0, v2, v0

    new-instance v2, Landroid/graphics/Point;

    float-to-int v1, v1

    float-to-int v0, v0

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method zzd(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/ads/internal/formats/zzb;
    .locals 1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zza(Landroid/view/View$OnClickListener;)Lcom/google/android/gms/ads/internal/formats/zzb;

    move-result-object v0

    return-object v0
.end method

.method zzi(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    instance-of v0, v0, Lcom/google/android/gms/ads/internal/formats/zzg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzdQ()Lcom/google/android/gms/ads/internal/formats/zzh;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzi(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    goto :goto_0
.end method

.method zzj(Landroid/view/View;)Landroid/graphics/Point;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyF:Lcom/google/android/gms/ads/internal/formats/zzb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyF:Lcom/google/android/gms/ads/internal/formats/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzb;->zzdI()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyD:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    new-instance v0, Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int v1, v2, v1

    invoke-direct {v0, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    goto :goto_0
.end method

.method zzq(I)I
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcS()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/formats/zzh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method
