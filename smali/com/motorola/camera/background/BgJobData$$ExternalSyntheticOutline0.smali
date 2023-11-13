.class public final synthetic Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;

    invoke-direct {v0}, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;->INSTANCE:Lcom/motorola/camera/background/BgJobData$$ExternalSyntheticOutline0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static m(III)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, p1

    mul-int/2addr p0, p2

    return p0
.end method


# virtual methods
.method public onClick(Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;)V
    .locals 0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->dismiss()V

    return-void
.end method
