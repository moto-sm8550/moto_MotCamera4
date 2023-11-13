.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$$ExternalSyntheticLambda3;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$$ExternalSyntheticLambda3;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$$ExternalSyntheticLambda3;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x1

    .line 1
    sput-boolean p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionEnable:Z

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
