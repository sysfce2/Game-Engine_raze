class DukeDrone : DukeActor
{
	default
	{
		pic "DRONE";
		+INTERNAL_BADGUY;
		+KILLCOUNT;
		+NOWATERDIP;
		+FLOATING;
	}
	
	override void PlayFTASound()
	{
		self.PlayActorSound("DRON_RECOG");
	}
}

class DukeTurret : DukeActor
{
	default
	{
		pic "ORGANTIC";
		+INTERNAL_BADGUY;
		+KILLCOUNT;
	}
	
	override void PlayFTASound()
	{
		self.PlayActorSound("TURR_RECOG");
	}
	
	override void Initialize()
	{
		self.cstat |= CSTAT_SPRITE_YCENTER;
	}
}

class DukeRotateGun : DukeActor
{
	default
	{
		pic "ROTATEGUN";
		+INTERNAL_BADGUY;
		+KILLCOUNT;
		+NODAMAGEPUSH;
		+NORADIUSPUSH;
	}
	
	override void Initialize()
	{
		self.vel.Z = 0;
	}
}

class DukeShark : DukeActor
{
	default
	{
		pic "SHARK";
		+INTERNAL_BADGUY;
		+DONTDIVEALIVE;
		+FLOATING;
	}
	
	override void Initialize()
	{
		// override some defaults.
		self.scale = (0.9375, 0.9375);
		self.clipdist = 10;
	}
}

