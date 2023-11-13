.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;
.super Ljava/lang/Object;
.source "LaunchGalleryTask.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLaunchGalleryTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LaunchGalleryTask.kt\ncom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,324:1\n37#2:325\n36#2,3:326\n*S KotlinDebug\n*F\n+ 1 LaunchGalleryTask.kt\ncom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask\n*L\n263#1:325\n263#1:326,3\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

.field public static isFoldingActivityAvailable:Z

.field public static final mPhotosVersion:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mPhotosVersion:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isGalleryAvailable(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/high16 v2, 0x20000

    .line 3
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static final isGalleryAvailable(Lcom/motorola/camera/CameraData;)Z
    .locals 3

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->isProcessingUri()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 5
    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getGalleryIntent(Lcom/motorola/camera/CameraData;Landroid/view/View;Z)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    .line 6
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isGalleryAvailable(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static final isPhotosProcessingSupported()Z
    .locals 6

    .line 1
    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    .line 2
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getGalleryApplicationInfo(Z)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    const/16 v3, 0xb

    .line 5
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mPhotosVersion:[I

    aget v5, v4, v1

    if-gt v5, v0, :cond_0

    .line 6
    aget v5, v4, v1

    if-ne v5, v0, :cond_2

    .line 7
    aget v0, v4, v2

    if-lt v0, v3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public static final isPhotosStabilizationSupported(Z)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    const/4 p0, 0x3

    const/16 v2, 0x1a

    .line 1
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mPhotosVersion:[I

    aget v4, v3, v1

    if-gt v4, p0, :cond_1

    .line 2
    aget v4, v3, v1

    if-ne v4, p0, :cond_0

    .line 3
    aget p0, v3, v0

    if-lt p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0
.end method

.method public static final setBrightnessForLaunch(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "activity.window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 3
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/mlkit/common/internal/zza;->getCurrentBrightness()F

    move-result p1

    .line 5
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "brightness"

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public static final start(Lcom/motorola/camera/ActivityStarter;Lcom/motorola/camera/CameraData;Landroid/view/View;Z)V
    .locals 7

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;-><init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZLcom/motorola/camera/ActivityStarter;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addMediaIdsExtraForSecureLaunch(Landroid/content/Intent;Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isSecureKeyGuardLocked()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const-string/jumbo p2, "start_gallery_from_secure_camera"

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lcom/motorola/camera/SecureDataHelper;->getInstance()Lcom/motorola/camera/SecureDataHelper;

    move-result-object p2

    .line 4
    iget-object v1, p2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    new-instance v1, Lorg/json/JSONArray;

    iget-object p2, p2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/util/LinkedList;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    new-array p2, v0, [Ljava/lang/Object;

    aput-object v1, p2, p0

    const-string/jumbo p0, "{items:%s}"

    .line 6
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const-string p2, "security_items"

    .line 8
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    const-string p2, "com.google.android.apps.photos.api.secure_mode"

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p2

    .line 11
    iget-object v0, p2, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 12
    :goto_1
    iget-object v1, p2, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_3

    .line 13
    iget-object v1, p2, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aput-wide v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "com.google.android.apps.photos.api.secure_mode_ids"

    .line 14
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    :cond_4
    :goto_2
    return-void
.end method

.method public final getDataType(Lcom/motorola/camera/CameraData;)Ljava/lang/String;
    .locals 0

    const-string p0, "mediaInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "image/*"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "video/*"

    :goto_0
    return-object p0
.end method

.method public final getGalleryApplicationInfo(Z)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 1
    :try_start_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "com.motorola.cn.gallery"

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.apps.photos"

    :goto_0
    const/high16 v0, 0x100000

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LaunchGalleryTask"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final getGalleryIntent(Lcom/motorola/camera/CameraData;Landroid/view/View;Z)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;
    .locals 10

    .line 1
    sget-object v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->GALLERY:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    sget-boolean v1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    .line 2
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 5
    invoke-static {p2, v4, v5, v2, v2}, Landroidx/core/app/ActivityOptionsCompat$Api16Impl;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v3

    :goto_0
    if-eqz p1, :cond_3

    .line 7
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.REVIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getDataType(Lcom/motorola/camera/CameraData;)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->isProcessingUri()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getProcessingUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "processing_uri_intent_extra"

    .line 12
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0, v4, v1, p3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setGalleryPackage(Landroid/content/Intent;ZZ)V

    .line 14
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-string v5, "image/jpeg"

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p0, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->addMediaIdsExtraForSecureLaunch(Landroid/content/Intent;Z)V

    .line 16
    new-instance v3, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    .line 17
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v5

    .line 18
    invoke-direct {v3, v4, v0, v5, p2}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;ILandroid/os/Bundle;)V

    goto :goto_2

    .line 19
    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->getMediaStoreUri(Lcom/motorola/camera/CameraData;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->addMediaIdsExtraForSecureLaunch(Landroid/content/Intent;Z)V

    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    :goto_1
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getGalleryApplicationInfo(Z)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 23
    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_3

    .line 24
    invoke-virtual {p0, v4, v1, p3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setGalleryPackage(Landroid/content/Intent;ZZ)V

    .line 25
    new-instance v3, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    .line 26
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v5

    .line 27
    invoke-direct {v3, v4, v0, v5, p2}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;ILandroid/os/Bundle;)V

    :cond_3
    :goto_2
    if-nez v3, :cond_a

    if-nez p1, :cond_7

    .line 28
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.APP_GALLERY"

    .line 29
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 31
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    const-string v7, "getInstance().packageMan\u2026ager.GET_RESOLVED_FILTER)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    if-eqz v7, :cond_6

    .line 33
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 34
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_4

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_4

    if-eqz v1, :cond_5

    const-string v9, "com.motorola.cn.gallery"

    goto :goto_3

    :cond_5
    const-string v9, "com.google.android.apps.photos"

    .line 35
    :goto_3
    invoke-static {v7, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 36
    invoke-virtual {p0, v3, v1, p3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setGalleryPackage(Landroid/content/Intent;ZZ)V

    goto :goto_4

    :cond_6
    move v8, v2

    :goto_4
    if-nez v8, :cond_8

    .line 37
    invoke-static {v4, v5}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p3, "makeMainSelectorActivity\u2026ent.CATEGORY_APP_GALLERY)"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 38
    :cond_7
    new-instance p0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->getMediaStoreUri(Lcom/motorola/camera/CameraData;)Landroid/net/Uri;

    move-result-object p3

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p0, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_5
    move-object v3, p0

    .line 39
    :cond_8
    new-instance p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    if-eqz p1, :cond_9

    .line 40
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v2

    .line 41
    :cond_9
    invoke-direct {p0, v3, v0, v2, p2}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;ILandroid/os/Bundle;)V

    move-object v3, p0

    :cond_a
    return-object v3
.end method

.method public final setGalleryPackage(Landroid/content/Intent;ZZ)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    new-instance p0, Landroid/content/ComponentName;

    if-eqz p3, :cond_0

    .line 2
    sget-boolean p2, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isFoldingActivityAvailable:Z

    if-eqz p2, :cond_0

    const-string p2, "com.motorola.cn.gallery.app.FoldingGalleryActivity"

    goto :goto_0

    :cond_0
    const-string p2, "com.motorola.cn.gallery.app.GalleryActivity"

    :goto_0
    const-string p3, "com.motorola.cn.gallery"

    .line 3
    invoke-direct {p0, p3, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p0, 0x1

    const-string/jumbo p2, "start_gallery_from_camera"

    .line 5
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const-string p0, "com.google.android.apps.photos"

    .line 6
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    return-void
.end method
