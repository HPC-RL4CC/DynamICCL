
default: plugin coordinator optimizer tests 

plugin: 
	@make -C src/plugin/

tests:
	@echo "No Make rule for TESTS defined  yet.!.!"

coordinator: 
	@echo "No Make rule for COORDINATOR defined yet.!.!"
#	@make -C src/coordinator/

optimizer:
	@echo "No Make rule for OPTIMIZER defined  yet.!.!"
#	@make -C src/optimizer/

clean:
	@make -C src/plugin/ clean
#	@make -C src/coordinator/ clean
#	@make -C src/optimizer/ clean
