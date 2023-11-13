.class public final Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;
.super Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;
.source "MotoMonopoly.java"


# static fields
.field public static final DIMO_PROVIDER_COLUMNS:[Ljava/lang/String;

.field public static final QR_PATTERNS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mDimoCodeTypes:[Ljava/lang/String;

.field public static mDimoPackage:Ljava/lang/String;

.field public static mDimoTitle:Ljava/lang/String;

.field public static sShouldCheckDimoSupport:Z


# instance fields
.field public final mCodeType:I

.field public final mData:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "BR.GOV.BCB.PIX"

    const-string v1, "BR.COM.ELO"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->QR_PATTERNS:Ljava/util/List;

    const-string v0, "CAMERA_APP_KEY"

    const-string v1, "CAMERA_APP_VALUE"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->DIMO_PROVIDER_COLUMNS:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->sShouldCheckDimoSupport:Z

    const-string v0, ""

    .line 4
    sput-object v0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoTitle:Ljava/lang/String;

    .line 5
    sput-object v0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoPackage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoCodeTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mData:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mCodeType:I

    if-eqz p2, :cond_2

    add-int/lit8 p2, p2, -0x1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    .line 4
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const p2, 0x7f110317

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const p2, 0x7f110318

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mTitle:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 9
    throw p0
.end method


# virtual methods
.method public final getAllActions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget v1, p0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mCodeType:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-string v4, "BARCODE_RESULT"

    const-string v5, "android.intent.action.VIEW"

    if-ne v1, v2, :cond_0

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mData:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    sget-object v2, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "monopoly://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoPackage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v3, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->MONOPOLY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mData:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.motorola.ccc.notification"

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "monopoly://com.motorola.ccc.notification"

    .line 12
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v3, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->MONOPOLY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    .line 15
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mData:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 19
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mData:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;-><init>(Landroid/content/ClipData;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public final getBackground()I
    .locals 0

    const p0, 0x7f08007f

    return p0
.end method

.method public final getBgColor()I
    .locals 0

    const p0, 0x7f0603d1

    return p0
.end method

.method public final getDetailsString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mData:Ljava/lang/String;

    return-object p0
.end method

.method public final getFieldsCount()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mData:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final getIcon()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;
    .locals 0

    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->MotoMonopoly:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0
.end method

.method public final getTitleString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MotoMonopoly{mData=\'"

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mData:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
