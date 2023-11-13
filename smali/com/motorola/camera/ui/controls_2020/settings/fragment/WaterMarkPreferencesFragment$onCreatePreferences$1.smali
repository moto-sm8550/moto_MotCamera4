.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WaterMarkPreferencesFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.ui.controls_2020.settings.fragment.WaterMarkPreferencesFragment$onCreatePreferences$1"
    f = "WaterMarkPreferencesFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;

    sget p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->$r8$clinit:I

    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkGenerator;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    iput-boolean v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mIsRtl:Z

    .line 8
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f070414

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mShotOnTxtSize:I

    .line 9
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f070406

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mByTxtSize:I

    .line 10
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f070418

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsXMargin:I

    .line 11
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f070419

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsYMargin:I

    .line 12
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f07041a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsTxtSize:I

    .line 13
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f07040b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLineWidth:I

    .line 14
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f070409

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLineHeight:I

    .line 15
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f07040a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLineTop:I

    .line 16
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f070413

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mPreviewWidth:I

    .line 17
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f070412

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mPreviewHeight:I

    .line 18
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f070405

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/Util;->roundToFour(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mAreaWidth:I

    .line 19
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f070404

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/Util;->roundToFour(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mAreaHeight:I

    .line 20
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    invoke-static {}, Lcom/motorola/camera/Util;->isBrandLenovo()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f07040e

    goto :goto_0

    :cond_0
    const v1, 0x7f070410

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoWidth:I

    .line 21
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    invoke-static {}, Lcom/motorola/camera/Util;->isBrandLenovo()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f07040d

    goto :goto_1

    :cond_1
    const v1, 0x7f07040c

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoHeight:I

    .line 22
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f07040f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginV:I

    .line 23
    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginH:I

    .line 24
    invoke-static {}, Lcom/motorola/camera/Util;->isBrandLenovo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    iget v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginH:I

    iget v2, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoWidth:I

    add-int/2addr v2, v0

    add-int/2addr v2, v0

    iget v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLineWidth:I

    add-int/2addr v0, v2

    :goto_2
    iget v2, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginH:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mSignXOffset:I

    .line 25
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->isTimestampChecked()Z

    move-result v0

    .line 26
    iput-boolean v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mIsTimestampOn:Z

    .line 27
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->isSignatureChecked()Z

    move-result v0

    .line 28
    iput-boolean v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignatureOn:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 29
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mSignText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignPresent:Z

    .line 30
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getSignatureText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/service/WatermarkGenerator;->setSignText(Ljava/lang/String;)V

    const v0, 0x7f080309

    .line 31
    iget v3, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mPreviewWidth:I

    iget v4, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mPreviewHeight:I

    .line 32
    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 33
    invoke-static {v0, v3, v4}, Lcom/motorola/camera/service/WatermarkEditorService;->loadDrawableBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 34
    iput-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftPreviewTemplate:Landroid/graphics/Bitmap;

    .line 35
    iget v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mPreviewWidth:I

    iget v3, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mPreviewHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mRightPreviewTemplate:Landroid/graphics/Bitmap;

    .line 36
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mRightPreviewTemplate:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 37
    iget-object v3, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v4, 0x7f0603bc

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 38
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getLogoId()I

    move-result v0

    iget v3, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoWidth:I

    iget v4, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoHeight:I

    .line 39
    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 40
    invoke-static {v0, v3, v4}, Lcom/motorola/camera/service/WatermarkEditorService;->loadDrawableBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    iput-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    .line 42
    iget v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mAreaWidth:I

    iget v3, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mAreaHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    .line 43
    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    .line 44
    :cond_4
    iget-object v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/service/WatermarkGenerator;->preDraw(Landroid/graphics/Bitmap;)V

    :goto_4
    const-wide/16 v3, 0x0

    .line 45
    invoke-static {v3, v4}, Lcom/motorola/camera/service/WatermarkEditorService;->getTimestampString(J)Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 47
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget v4, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsTxtSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    iget v4, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mLineColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v0, v1, v5, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 52
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    .line 53
    iget v3, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 54
    iget v4, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsXMargin:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    iget v3, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsYMargin:I

    add-int/2addr v3, v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 55
    iget v4, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsXMargin:I

    iput v4, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsTxtXStart:I

    .line 56
    iput v0, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTsTxtYStart:I

    .line 57
    iput-object v3, p1, Lcom/motorola/camera/service/WatermarkGenerator;->mTimestampTemplate:Landroid/graphics/Bitmap;

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_8

    const v0, 0x7f1103e8

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    const v3, 0x7f1103e7

    .line 61
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SwitchPreferenceCompat;

    const v4, 0x7f1103e6

    .line 63
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-virtual {p0, v4}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;

    const v5, 0x7f1103e5

    .line 65
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;

    if-eqz v0, :cond_5

    .line 67
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;)V

    .line 68
    iput-object v5, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    :cond_5
    if-eqz v3, :cond_6

    .line 69
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda0;

    invoke-direct {v0, v4, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    iput-object v0, v3, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    :cond_6
    if-eqz p1, :cond_7

    .line 71
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, v4}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;)V

    .line 72
    iput-object v0, p1, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 73
    :cond_7
    new-instance p1, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;

    invoke-direct {p1}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->watermarkCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    .line 75
    invoke-static {v1}, Lcom/motorola/camera/service/WatermarkEditorService;->getCameraPictureSizes(Z)Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    .line 78
    invoke-static {v2}, Lcom/motorola/camera/service/WatermarkEditorService;->getCameraPictureSizes(Z)Ljava/util/List;

    move-result-object v1

    .line 79
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 81
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->getStringSetsFromSizes(Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    const-string/jumbo v3, "supported_front_pic_sizes"

    .line 82
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 83
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->getStringSetsFromSizes(Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    const-string/jumbo v3, "supported_rear_pic_sizes"

    .line 84
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->watermarkCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;

    const-string v2, "front"

    invoke-static {v1, v2, p1}, Lcom/motorola/camera/service/WatermarkEditorService;->cacheWatermarkItems(Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;Ljava/lang/String;Ljava/util/List;)V

    .line 87
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->watermarkCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;

    const-string p1, "rear"

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/service/WatermarkEditorService;->cacheWatermarkItems(Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;Ljava/lang/String;Ljava/util/List;)V

    .line 88
    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
