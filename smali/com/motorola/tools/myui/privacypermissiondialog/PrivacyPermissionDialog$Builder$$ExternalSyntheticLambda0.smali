.class public final synthetic Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;

.field public final synthetic f$1:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;

    iput-object p2, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;

    iget-object p0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;

    .line 1
    iget-object p1, p1, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, -0x1

    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
